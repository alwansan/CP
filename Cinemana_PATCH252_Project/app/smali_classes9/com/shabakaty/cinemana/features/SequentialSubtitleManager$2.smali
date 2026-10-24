.class Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$2;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scheduleStartupRetry(Ljava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$2;->val$activity:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$2;->val$activity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onPlayerReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Startup subtitle retry failed"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$100(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :goto_0
    return-void
.end method
