.class Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$5;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showManageDialog(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;Ljava/lang/String;)V
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

    .line 402
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$5;->val$activity:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$5;->val$work:Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 404
    const-string p1, "onClick"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$5;->val$activity:Ljava/lang/Object;

    iget-object p2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$5;->val$work:Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$1300(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    .line 405
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
