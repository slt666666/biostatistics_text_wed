data {
    int N;
    vector[N] leaf_length;
}

parameters {
    real mu;
    real<lower=0> sigma;
}

model {
    for (i in 1:N) {
        leaf_length[i] ~ normal(mu, sigma);
    }
}