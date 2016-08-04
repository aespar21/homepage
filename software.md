---
layout: page
title: Software
permalink: /software/
#cover:  "/assets/instacode.png"
---
<img src="{{ site.baseurl }}/assets/bma.jpg" title="Model Space" class="profile">

BAS is an [R](http://r-project.cran.org)
Package for Bayesian Model Averaging in linear models and generalized
linear models using stochastic or deterministic sampling
from posterior distributions.  Prior distributions on
coefficients are from Zellner's g-prior or mixtures of
g-priors corresponding to the Zellner-Siow Cauchy Priors
or the mixture of g-priors from
[Liang et al (2008)](http://dx.doi.org/10.1198/016214507000001337) for
linear models or mixtures of g-priors in GLMs of
[Li and Clyde (2015)](http://arxiv.org/abs/1503.06913). Other
model selection criteria are based on AIC, BIC, and
Empirical Bayes. Sampling probabilities may be updated
based on the sampled models using Sampling w/out
Replacement or an MCMC algorithm samples models using the
BAS tree structure as an efficient hash table. The
package allows uniform or beta-binomial prior
distributions on models and for large p truncated priors
on the model space.  The user may force variables to always be included.


You can find the latest versions of BAS and source code (needs
compilation with FORTRAN) at
[github.com/merliseclyde/BAS](https://github.com/merliseclyde/BAS) or
stable binary/source versions for all platforms at [CRAN](https://cran.r-project.org/web/packages/BAS/index.html)


To [cite BAS](https://cran.r-project.org/web/packages/BAS/citation.html) in any papers use

<iframe src="https://cran.r-project.org/web/packages/BAS/citation.html" width="400px"></iframe>


The DOI for the stable release is [http://dx.doi.org/10.5281/zenodo.59497](http://dx.doi.org/10.5281/zenodo.59497)

<h2>Software News</h2>
{% assign pagecat = "software" %}


 <ul class="posts-list">
    {% for post in site.categories[pagecat] %}
    <li>
      <strong>
        <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
      </strong>
      <span class="post-date">- {{ post.date | date_to_long_string }}</span>
    </li>

  {% endfor %}
 </ul>

