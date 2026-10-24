.class public final synthetic Lcom/shabakaty/downloader/g65;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic r:Lcom/shabakaty/downloader/g65;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/g65;

    invoke-direct {v0}, Lcom/shabakaty/downloader/g65;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/g65;->r:Lcom/shabakaty/downloader/g65;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/c65;

    check-cast p2, Lcom/shabakaty/downloader/c65;

    .line 1
    iget-wide v0, p1, Lcom/shabakaty/downloader/c65;->b:J

    iget-wide p1, p2, Lcom/shabakaty/downloader/c65;->b:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
