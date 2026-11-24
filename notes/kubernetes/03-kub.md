# Cluster behaviour

- `restartPolicy` behaviours
    -
    - Pods: always restart but can be changed to `Never` or `OnFailure`
    - Deployments: must `always` restart. Any other value will be rejected.
    - Jobs: Equally flexible as pod.

- `self healing`
    -
    Pods default behavior are not self-healing because they have no `replica` attribute unlike deployments.