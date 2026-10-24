.class public final Lcom/shabakaty/downloader/on$a;
.super Ljava/lang/Object;
.source "BottomSheetList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/on;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/gn;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public final c:Lcom/shabakaty/downloader/on;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    iput-object v0, p0, Lcom/shabakaty/downloader/on$a;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/on;

    invoke-direct {v0}, Lcom/shabakaty/downloader/on;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/on$a;->c:Lcom/shabakaty/downloader/on;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/shabakaty/downloader/on$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/gn;",
            ">;)",
            "Lcom/shabakaty/downloader/on$a;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/on$a;->a:Ljava/util/List;

    return-object p0
.end method

.method public final b(Landroidx/fragment/app/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/on$a;->c:Lcom/shabakaty/downloader/on;

    iget-object v1, p0, Lcom/shabakaty/downloader/on$a;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 2
    :cond_0
    iput-object v1, v0, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/on$a;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/on$a;->c:Lcom/shabakaty/downloader/on;

    const-string v1, "listBottomSheet"

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/on;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    return-void
.end method
