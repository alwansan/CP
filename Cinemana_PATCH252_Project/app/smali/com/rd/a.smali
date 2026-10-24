.class public Lcom/rd/a;
.super Ljava/lang/Object;
.source "IndicatorManager.java"

# interfaces
.implements Lcom/shabakaty/downloader/lz4$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rd/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/e01;

.field public b:Lcom/shabakaty/downloader/d8;

.field public c:Lcom/rd/a$a;


# direct methods
.method public constructor <init>(Lcom/rd/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/rd/a;->c:Lcom/rd/a$a;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/e01;

    invoke-direct {p1}, Lcom/shabakaty/downloader/e01;-><init>()V

    iput-object p1, p0, Lcom/rd/a;->a:Lcom/shabakaty/downloader/e01;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/d8;

    .line 5
    iget-object v1, p1, Lcom/shabakaty/downloader/e01;->a:Lcom/shabakaty/downloader/r02;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/r02;

    invoke-direct {v1}, Lcom/shabakaty/downloader/r02;-><init>()V

    iput-object v1, p1, Lcom/shabakaty/downloader/e01;->a:Lcom/shabakaty/downloader/r02;

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/e01;->a:Lcom/shabakaty/downloader/r02;

    .line 8
    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/d8;-><init>(Lcom/shabakaty/downloader/r02;Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v0, p0, Lcom/rd/a;->b:Lcom/shabakaty/downloader/d8;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/r02;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rd/a;->a:Lcom/shabakaty/downloader/e01;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/e01;->a:Lcom/shabakaty/downloader/r02;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/r02;

    invoke-direct {v1}, Lcom/shabakaty/downloader/r02;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/e01;->a:Lcom/shabakaty/downloader/r02;

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/e01;->a:Lcom/shabakaty/downloader/r02;

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/kz4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rd/a;->a:Lcom/shabakaty/downloader/e01;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/e01;->b:Lcom/shabakaty/downloader/d01;

    .line 3
    iput-object p1, v0, Lcom/shabakaty/downloader/d01;->a:Lcom/shabakaty/downloader/kz4;

    .line 4
    iget-object p1, p0, Lcom/rd/a;->c:Lcom/rd/a$a;

    if-eqz p1, :cond_0

    .line 5
    check-cast p1, Lcom/rd/PageIndicatorView;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
