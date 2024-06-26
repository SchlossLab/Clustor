//
// Created by Gregory Johnson on 5/1/24.
//

#include "Tests/ClusterCommandTestFixture.h"

bool ClusterCommandTestFixture::TestSetIterationsWorksCorrectly(const int iterations, const bool expectResult) {
    Setup();
    const bool result = clusterCommand->SetMaxIterations(iterations);
    TearDown();
    return result == expectResult;
}

void ClusterCommandTestFixture::Setup() {
    clusterCommand = new ClusterCommand();
}

void ClusterCommandTestFixture::TearDown() {
    delete(clusterCommand);
}
