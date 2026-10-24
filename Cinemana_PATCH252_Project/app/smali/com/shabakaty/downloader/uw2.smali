.class public final Lcom/shabakaty/downloader/uw2;
.super Ljava/lang/Object;
.source "NavDestinationBuilder.kt"


# instance fields
.field public final a:Landroidx/navigation/b$a;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/navigation/b$a;

    invoke-direct {v0}, Landroidx/navigation/b$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/uw2;->a:Landroidx/navigation/b$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/uw2;->b:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uw2;->a:Landroidx/navigation/b$a;

    .line 3
    iput-object p1, v0, Landroidx/navigation/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/navigation/b$a;->d:Z

    return-void
.end method

.method public final b(Lcom/shabakaty/downloader/dx2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/dx2<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uw2;->a:Landroidx/navigation/b$a;

    .line 2
    iput-object p1, v0, Landroidx/navigation/b$a;->a:Lcom/shabakaty/downloader/dx2;

    return-void
.end method
