.class public final Lcom/shabakaty/downloader/q50$a;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shabakaty/downloader/q50$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/q50$b;

    check-cast p2, Lcom/shabakaty/downloader/q50$b;

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/q50$b;->b()I

    move-result p2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/q50$b;->b()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
