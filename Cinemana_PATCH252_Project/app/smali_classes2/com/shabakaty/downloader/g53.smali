.class public abstract Lcom/shabakaty/downloader/g53;
.super Ljava/lang/Object;
.source "ObservableProperty.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/hn3<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/g53;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/jd2<",
            "*>;)TV;"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/g53;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/jd2<",
            "*>;TV;)V"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/g53;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2, p1, p3}, Lcom/shabakaty/downloader/g53;->d(Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p3, p0, Lcom/shabakaty/downloader/g53;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p2, p1, p3}, Lcom/shabakaty/downloader/g53;->c(Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/jd2<",
            "*>;TV;TV;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/jd2<",
            "*>;TV;TV;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
