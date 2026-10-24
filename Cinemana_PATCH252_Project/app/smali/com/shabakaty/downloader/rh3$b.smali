.class public final Lcom/shabakaty/downloader/rh3$b;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/zq2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/rh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/vl0$a;

.field public b:Lcom/shabakaty/downloader/oh3$a;

.field public c:Lcom/shabakaty/downloader/w01;

.field public d:Lcom/shabakaty/downloader/gj2;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0$a;Lcom/shabakaty/downloader/s91;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cu;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/s91;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/rh3$b;->a:Lcom/shabakaty/downloader/vl0$a;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/rh3$b;->b:Lcom/shabakaty/downloader/oh3$a;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/vn0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/vn0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/rh3$b;->c:Lcom/shabakaty/downloader/w01;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/po0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/po0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/rh3$b;->d:Lcom/shabakaty/downloader/gj2;

    const/high16 p1, 0x100000

    .line 7
    iput p1, p0, Lcom/shabakaty/downloader/rh3$b;->e:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/uq2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/rh3$b;->b(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/rh3;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/rh3;
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object v0, v0, Lcom/shabakaty/downloader/dp2$g;->h:Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/rh3;

    iget-object v3, p0, Lcom/shabakaty/downloader/rh3$b;->a:Lcom/shabakaty/downloader/vl0$a;

    iget-object v4, p0, Lcom/shabakaty/downloader/rh3$b;->b:Lcom/shabakaty/downloader/oh3$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/rh3$b;->c:Lcom/shabakaty/downloader/w01;

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/vn0;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/vn0;->b(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/u01;

    move-result-object v5

    iget-object v6, p0, Lcom/shabakaty/downloader/rh3$b;->d:Lcom/shabakaty/downloader/gj2;

    iget v7, p0, Lcom/shabakaty/downloader/rh3$b;->e:I

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/rh3;-><init>(Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/vl0$a;Lcom/shabakaty/downloader/oh3$a;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/gj2;ILcom/shabakaty/downloader/rh3$a;)V

    return-object v0
.end method
