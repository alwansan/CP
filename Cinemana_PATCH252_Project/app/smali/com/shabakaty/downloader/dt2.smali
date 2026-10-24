.class public final synthetic Lcom/shabakaty/downloader/dt2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/dt2;

.field public static final synthetic t:Lcom/shabakaty/downloader/dt2;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/dt2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dt2;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/dt2;->s:Lcom/shabakaty/downloader/dt2;

    new-instance v0, Lcom/shabakaty/downloader/dt2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dt2;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/dt2;->t:Lcom/shabakaty/downloader/dt2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/dt2;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/dt2;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    .line 1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 2
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long p1, p1

    mul-long v2, v2, p1

    sub-long/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1

    .line 4
    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/ui/d$c;

    check-cast p2, Lcom/google/android/exoplayer2/ui/d$c;

    .line 5
    iget v0, p2, Lcom/google/android/exoplayer2/ui/d$c;->b:I

    iget v1, p1, Lcom/google/android/exoplayer2/ui/d$c;->b:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/d$c;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/exoplayer2/ui/d$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/d$c;->d:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/exoplayer2/ui/d$c;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
