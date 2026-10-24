.class public final Lcom/shabakaty/downloader/cx2;
.super Ljava/lang/Object;
.source "NavOptionsBuilder.kt"


# instance fields
.field public final a:Landroidx/navigation/g$a;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/navigation/g$a;

    invoke-direct {v0}, Landroidx/navigation/g$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/cx2;->a:Landroidx/navigation/g$a;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/cx2;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/tm1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/u7;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    const-string v0, "animBuilder"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/u7;-><init>()V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cx2;->a:Landroidx/navigation/g$a;

    .line 3
    iget v1, v0, Lcom/shabakaty/downloader/u7;->a:I

    .line 4
    iput v1, p1, Landroidx/navigation/g$a;->d:I

    .line 5
    iget v1, v0, Lcom/shabakaty/downloader/u7;->b:I

    .line 6
    iput v1, p1, Landroidx/navigation/g$a;->e:I

    .line 7
    iget v1, v0, Lcom/shabakaty/downloader/u7;->c:I

    .line 8
    iput v1, p1, Landroidx/navigation/g$a;->f:I

    .line 9
    iget v0, v0, Lcom/shabakaty/downloader/u7;->d:I

    .line 10
    iput v0, p1, Landroidx/navigation/g$a;->g:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/cx2;->c:I

    return-void
.end method
