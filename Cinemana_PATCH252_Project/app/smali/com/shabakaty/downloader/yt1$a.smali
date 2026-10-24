.class public final Lcom/shabakaty/downloader/yt1$a;
.super Lcom/shabakaty/downloader/af2;
.source "HomeMainAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ln1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yt1;-><init>(Lcom/shabakaty/downloader/vt1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/ln1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/yt1$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/yt1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yt1$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/yt1$a;->r:Lcom/shabakaty/downloader/yt1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/util/List;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    const-string v0, "oldList"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;

    if-eqz v0, :cond_0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    invoke-virtual {p2}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
