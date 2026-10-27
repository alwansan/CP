.class final Lcom/shabakaty/cinemana/features/MkvReconciler$Audit;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/features/MkvReconciler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Audit"
.end annotation

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
    .locals 1
    :try_start_audit
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileAll()V
    :try_end_audit
    .catch Ljava/lang/Throwable; {:try_start_audit .. :try_end_audit} :audit_exception
    return-void

    :audit_exception
    move-exception v0
    return-void
.end method
