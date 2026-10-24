.class Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$1;
.super Ljava/lang/Object;
.source "SequentialSubtitleSyncHelper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->showSequentialDialog(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$editor:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$1;->val$context:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$1;->val$editor:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    const-string p1, "onClick"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$1;->val$context:Ljava/lang/Object;

    iget-object p2, p0, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper$1;->val$editor:Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/mod/SequentialSubtitleSyncHelper;->access$000(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
