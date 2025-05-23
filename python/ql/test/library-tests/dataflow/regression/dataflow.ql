/**
 * This should be compared to
 * python/ql/test/library-tests/taint/dataflow/Dataflow.ql
 * A first goal is to have identical results; after that we
 * hope to remove the false positive.
 */

import python
import utils.test.dataflow.testConfig

from DataFlow::Node source, DataFlow::Node sink
where TestFlow::flow(source, sink)
select source, sink
