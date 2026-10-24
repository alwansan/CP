.class public Lcom/shabakaty/downloader/te4$b;
.super Lcom/shabakaty/downloader/te4;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/te4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f51;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/te4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/te4;->a:Lcom/shabakaty/downloader/f51;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p2, p2, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    check-cast p2, Lcom/shabakaty/downloader/k21;

    if-eqz p2, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/te4;->a:Lcom/shabakaty/downloader/f51;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/f51;->a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/te4;->a:Lcom/shabakaty/downloader/f51;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":ImmediateParent%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
