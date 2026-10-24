.class public final Lcom/shabakaty/downloader/bu1;
.super Lcom/shabakaty/downloader/af2;
.source "HomeNavigationExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/uw2;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/bu1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/bu1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bu1;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/bu1;->r:Lcom/shabakaty/downloader/bu1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/uw2;

    const-string v0, "$this$argument"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/dx2$m;

    const-class v1, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dx2$m;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/uw2;->b(Lcom/shabakaty/downloader/dx2;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/uw2;->a:Landroidx/navigation/b$a;

    .line 5
    iput-object v0, p1, Landroidx/navigation/b$a;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Landroidx/navigation/b$a;->d:Z

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
