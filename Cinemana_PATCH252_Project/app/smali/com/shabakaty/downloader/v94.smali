.class public final synthetic Lcom/shabakaty/downloader/v94;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic r:Lcom/shabakaty/downloader/v94;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/v94;

    invoke-direct {v0}, Lcom/shabakaty/downloader/v94;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/v94;->r:Lcom/shabakaty/downloader/v94;

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

    check-cast p1, Lcom/google/android/exoplayer2/ui/d$c;

    check-cast p2, Lcom/google/android/exoplayer2/ui/d$c;

    .line 1
    iget v0, p2, Lcom/google/android/exoplayer2/ui/d$c;->a:I

    iget v1, p1, Lcom/google/android/exoplayer2/ui/d$c;->a:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/ui/d$c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/d$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p2, Lcom/google/android/exoplayer2/ui/d$c;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/d$c;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method
