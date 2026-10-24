.class public final Lcom/shabakaty/downloader/tw2;
.super Ljava/lang/Object;
.source "NavDestinationBuilder.kt"


# instance fields
.field public a:I

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/navigation/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/tw2;->b:Ljava/util/Map;

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
            "Lcom/shabakaty/downloader/cx2;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    const-string v0, "optionsBuilder"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cx2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cx2;-><init>()V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, v0, Lcom/shabakaty/downloader/cx2;->a:Landroidx/navigation/g$a;

    .line 3
    iget-boolean v1, v0, Lcom/shabakaty/downloader/cx2;->b:Z

    .line 4
    iput-boolean v1, p1, Landroidx/navigation/g$a;->a:Z

    .line 5
    iget v0, v0, Lcom/shabakaty/downloader/cx2;->c:I

    .line 6
    iput v0, p1, Landroidx/navigation/g$a;->b:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Landroidx/navigation/g$a;->c:Z

    .line 8
    invoke-virtual {p1}, Landroidx/navigation/g$a;->a()Landroidx/navigation/g;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/tw2;->c:Landroidx/navigation/g;

    return-void
.end method
