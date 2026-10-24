.class public final Lcom/shabakaty/downloader/qz4$b;
.super Lcom/shabakaty/downloader/qz4;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, "must have exactly "

    const-string v1, " value parameters"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/qj2;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/qz4;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    iput p1, p0, Lcom/shabakaty/downloader/qz4$b;->b:I

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/xn1;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/shabakaty/downloader/qz4$b;->b:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
