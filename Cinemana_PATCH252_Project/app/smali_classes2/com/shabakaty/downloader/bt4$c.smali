.class public final Lcom/shabakaty/downloader/bt4$c;
.super Lcom/shabakaty/downloader/af2;
.source "TypeIntersectionScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/bt4;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/t64;",
        "Lcom/shabakaty/downloader/rq;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/bt4$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/bt4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bt4$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/bt4$c;->r:Lcom/shabakaty/downloader/bt4$c;

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
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/t64;

    const-string v0, "$this$selectMostSpecificInEachOverridableGroup"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
