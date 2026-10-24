.class Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$9;
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 460
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$9;->val$activity:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$9;->val$activity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$1700(Ljava/lang/Object;)V

    return-void
.end method
