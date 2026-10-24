.class public Lcom/shabakaty/downloader/dt1;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shabakaty/downloader/fc4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/et1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/fc4;

    check-cast p2, Lcom/shabakaty/downloader/fc4;

    .line 2
    iget p1, p1, Lcom/shabakaty/downloader/fc4;->d:I

    iget p2, p2, Lcom/shabakaty/downloader/fc4;->d:I

    sub-int/2addr p1, p2

    return p1
.end method
