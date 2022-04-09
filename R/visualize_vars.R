#' Visualize a df with two specified variables and an optional alpha value
#' @param df A data frame or extension of it
#' @param x A numeric variable shown on x-axis
#' @param y A numeric variable shown on y-axis
#' @param alpha number is default to 0.4. If the viewers want to change anything here,
#' you can set alpha as a decimal number in the function.
#'
#' @return ggplot point graph of two variables from same df
#' @export
#'
#' @examples
#' visualize_vars(mtcars, mpg, cyl)
#' visualize_vars(data.frame(x = 1, y =2), x,y)
visualize_vars <- function(df, x, y, alpha = 0.4) {
  if (!is.data.frame(df)) {
    stop("df should be a data frame or data frame extension")
  }
  else if (!is.numeric(dplyr::pull(df, {{x}} )) |
           !is.numeric(dplyr::pull(df, {{y}})) ) {
    stop("x and y should be of type numeric")
  }

  xlab <- deparse(substitute(x))
  ylab <- deparse(substitute(y))
  df |>
    ggplot2::ggplot(ggplot2::aes({{x}}, {{y}})) +
    ggplot2::geom_point(alpha = alpha) +
    ggplot2::labs(x = xlab, y = ylab, title = paste(xlab, "vs",
                                           ylab)) +
    ggplot2::theme(text = ggplot2::element_text(size = 15))
}
