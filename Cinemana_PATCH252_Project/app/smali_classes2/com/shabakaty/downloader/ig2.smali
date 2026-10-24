.class public final Lcom/shabakaty/downloader/ig2;
.super Ljava/lang/Object;
.source "LazyJavaStaticClassScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/nh0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/nh0$c;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/ig2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ig2<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ig2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ig2;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ig2;->a:Lcom/shabakaty/downloader/ig2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/q20;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "it.typeConstructor.supertypes"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/hg2;->r:Lcom/shabakaty/downloader/hg2;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/t04;->H(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/t04;->A(Lcom/shabakaty/downloader/l04;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
