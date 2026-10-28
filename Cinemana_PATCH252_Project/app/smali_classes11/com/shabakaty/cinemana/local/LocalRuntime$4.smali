.class Lcom/shabakaty/cinemana/local/LocalRuntime$4;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime;->requestScan(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanCancelled:Z

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$4;->val$force:Z

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->scan(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_12
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    :goto_8
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_19

    :catchall_10
    move-exception v1

    goto :goto_1a

    :catch_12
    move-exception v1

    :try_start_13
    const-string v2, "scan"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    goto :goto_8

    :goto_19
    return-void

    :goto_1a
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
