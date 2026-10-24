.class public final synthetic Lcom/shabakaty/downloader/z84;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/z84;

.field public static final synthetic t:Lcom/shabakaty/downloader/z84;

.field public static final synthetic u:Lcom/shabakaty/downloader/z84;

.field public static final synthetic v:Lcom/shabakaty/downloader/z84;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/z84;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/z84;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/z84;->s:Lcom/shabakaty/downloader/z84;

    new-instance v0, Lcom/shabakaty/downloader/z84;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/z84;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/z84;->t:Lcom/shabakaty/downloader/z84;

    new-instance v0, Lcom/shabakaty/downloader/z84;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/z84;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/z84;->u:Lcom/shabakaty/downloader/z84;

    new-instance v0, Lcom/shabakaty/downloader/z84;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/z84;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/z84;->v:Lcom/shabakaty/downloader/z84;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/z84;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9

    iget v0, p0, Lcom/shabakaty/downloader/z84;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Lcom/shabakaty/downloader/eq;

    check-cast p2, Lcom/shabakaty/downloader/eq;

    .line 1
    iget-wide v0, p1, Lcom/shabakaty/downloader/eq;->w:J

    iget-wide v2, p2, Lcom/shabakaty/downloader/eq;->w:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/eq;->f(Lcom/shabakaty/downloader/eq;)I

    move-result p1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 3
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget-object p1, Lcom/shabakaty/downloader/ep0;->f:[I

    const/4 p1, 0x0

    return p1

    :pswitch_2
    check-cast p1, Lcom/shabakaty/downloader/zx$a;

    check-cast p2, Lcom/shabakaty/downloader/zx$a;

    .line 4
    iget p2, p2, Lcom/shabakaty/downloader/zx$a;->b:I

    iget p1, p1, Lcom/shabakaty/downloader/zx$a;->b:I

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    .line 5
    :pswitch_3
    check-cast p1, Lcom/shabakaty/downloader/y84$b;

    check-cast p2, Lcom/shabakaty/downloader/y84$b;

    .line 6
    sget-object v0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/l;

    iget-wide v1, p1, Lcom/shabakaty/downloader/y84$b;->r:J

    iget-wide v3, p2, Lcom/shabakaty/downloader/y84$b;->r:J

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/collect/l;->b(JJ)Lcom/google/common/collect/l;

    move-result-object v0

    iget-wide v1, p1, Lcom/shabakaty/downloader/y84$b;->s:J

    iget-wide v3, p2, Lcom/shabakaty/downloader/y84$b;->s:J

    .line 8
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/collect/l;->b(JJ)Lcom/google/common/collect/l;

    move-result-object v0

    iget p1, p1, Lcom/shabakaty/downloader/y84$b;->t:I

    iget p2, p2, Lcom/shabakaty/downloader/y84$b;->t:I

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/l;->a(II)Lcom/google/common/collect/l;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/common/collect/l;->f()I

    move-result p1

    return p1

    .line 11
    :goto_1
    check-cast p1, Lcom/shabakaty/downloader/x84$b;

    check-cast p2, Lcom/shabakaty/downloader/x84$b;

    sget-object v0, Lcom/shabakaty/downloader/x84;->h:Ljava/util/Comparator;

    .line 12
    iget p1, p1, Lcom/shabakaty/downloader/x84$b;->c:F

    iget p2, p2, Lcom/shabakaty/downloader/x84$b;->c:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
