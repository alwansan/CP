.class public final Lcom/shabakaty/downloader/gb2;
.super Ljava/lang/Object;
.source "JvmBuiltInsCustomizer.kt"

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
.field public static final a:Lcom/shabakaty/downloader/gb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gb2<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/gb2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gb2;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/gb2;->a:Lcom/shabakaty/downloader/gb2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->a()Lcom/shabakaty/downloader/tq;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
