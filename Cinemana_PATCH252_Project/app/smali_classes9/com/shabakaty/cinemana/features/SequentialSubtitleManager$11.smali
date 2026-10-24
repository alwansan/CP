.class Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$11;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showSettingsActionsDialog(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Ljava/lang/Object;

.field final synthetic val$work:Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$11;->val$activity:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$11;->val$work:Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 467
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$11;->val$activity:Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$11;->val$work:Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    iget-object v2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$11;->val$activity:Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$11;->val$work:Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$1900(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$1200(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$2000(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;Ljava/lang/String;)V

    return-void
.end method
