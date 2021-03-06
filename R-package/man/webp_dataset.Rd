% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image_dataset.R
\name{webp_dataset}
\alias{webp_dataset}
\title{Create a \code{WebPDataset}.}
\usage{
webp_dataset(filenames)
}
\arguments{
\item{filenames}{A \code{tf.string} tensor containing one or more filenames.}
}
\description{
A WebP Image File Dataset that reads the WebP file.
}
\examples{
\dontrun{
dataset <- webp_dataset(
    filenames = list("testdata/sample.webp")) \%>\%
  dataset_repeat(1)

sess <- tf$Session()
iterator <- make_iterator_one_shot(dataset)
next_batch <- iterator_get_next(iterator)

until_out_of_range({
  batch <- sess$run(next_batch)
  print(batch)
})
}

}
