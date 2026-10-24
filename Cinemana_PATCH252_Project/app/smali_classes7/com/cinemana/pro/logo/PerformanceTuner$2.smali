.class Lcom/cinemana/pro/logo/PerformanceTuner$2;
.super Ljava/lang/Object;
.source "PerformanceTuner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cinemana/pro/logo/PerformanceTuner;->onResume(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$decor:Ljava/lang/Object;

.field final synthetic val$ref:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/cinemana/pro/logo/PerformanceTuner$2;->val$ref:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cinemana/pro/logo/PerformanceTuner$2;->val$decor:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/cinemana/pro/logo/PerformanceTuner$2;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cinemana/pro/logo/PerformanceTuner$2;->val$decor:Ljava/lang/Object;

    invoke-static {v0}, Lcom/cinemana/pro/logo/PerformanceTuner;->access$000(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
