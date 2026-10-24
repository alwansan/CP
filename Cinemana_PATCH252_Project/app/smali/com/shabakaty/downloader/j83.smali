.class public final synthetic Lcom/shabakaty/downloader/j83;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/j83;

.field public static final synthetic t:Lcom/shabakaty/downloader/j83;

.field public static final synthetic u:Lcom/shabakaty/downloader/j83;

.field public static final synthetic v:Lcom/shabakaty/downloader/j83;

.field public static final synthetic w:Lcom/shabakaty/downloader/j83;

.field public static final synthetic x:Lcom/shabakaty/downloader/j83;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/j83;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/j83;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/j83;->s:Lcom/shabakaty/downloader/j83;

    new-instance v0, Lcom/shabakaty/downloader/j83;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/j83;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/j83;->t:Lcom/shabakaty/downloader/j83;

    new-instance v0, Lcom/shabakaty/downloader/j83;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/j83;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/j83;->u:Lcom/shabakaty/downloader/j83;

    new-instance v0, Lcom/shabakaty/downloader/j83;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/j83;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/j83;->v:Lcom/shabakaty/downloader/j83;

    new-instance v0, Lcom/shabakaty/downloader/j83;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/j83;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/j83;->w:Lcom/shabakaty/downloader/j83;

    new-instance v0, Lcom/shabakaty/downloader/j83;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/j83;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/j83;->x:Lcom/shabakaty/downloader/j83;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/j83;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/j83;->r:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p1, Lcom/shabakaty/downloader/eg0$c;

    check-cast p2, Lcom/shabakaty/downloader/eg0$c;

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/shabakaty/downloader/eg0$c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 2
    :pswitch_1
    check-cast p1, Lcom/shabakaty/downloader/x84$b;

    check-cast p2, Lcom/shabakaty/downloader/x84$b;

    sget-object v0, Lcom/shabakaty/downloader/x84;->h:Ljava/util/Comparator;

    .line 3
    iget p1, p1, Lcom/shabakaty/downloader/x84$b;->a:I

    iget p2, p2, Lcom/shabakaty/downloader/x84$b;->a:I

    sub-int/2addr p1, p2

    return p1

    .line 4
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget-object v0, Lcom/shabakaty/downloader/ep0;->f:[I

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int v1, p1, p2

    :goto_0
    return v1

    .line 8
    :pswitch_3
    check-cast p1, Lcom/shabakaty/downloader/nk;

    check-cast p2, Lcom/shabakaty/downloader/nk;

    .line 9
    iget v0, p1, Lcom/shabakaty/downloader/nk;->c:I

    iget v1, p2, Lcom/shabakaty/downloader/nk;->c:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/downloader/nk;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/shabakaty/downloader/nk;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0

    .line 11
    :pswitch_4
    check-cast p1, Lcom/shabakaty/downloader/o90$a;

    check-cast p2, Lcom/shabakaty/downloader/o90$a;

    sget-object v0, Lcom/shabakaty/downloader/k83;->s:Lcom/shabakaty/downloader/k83;

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/o90$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/shabakaty/downloader/o90$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 13
    :goto_2
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    sget-object v0, Lcom/shabakaty/downloader/kg0;->g:Ljava/nio/charset/Charset;

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 15
    sget v0, Lcom/shabakaty/downloader/kg0;->h:I

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
