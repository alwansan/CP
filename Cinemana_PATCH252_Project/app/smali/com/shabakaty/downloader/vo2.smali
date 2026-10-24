.class public final synthetic Lcom/shabakaty/downloader/vo2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wo2$g;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/wo2$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vo2;->r:Lcom/shabakaty/downloader/wo2$g;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/vo2;->r:Lcom/shabakaty/downloader/wo2$g;

    .line 1
    invoke-interface {v0, p2}, Lcom/shabakaty/downloader/wo2$g;->d(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/wo2$g;->d(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
