.class public final synthetic Lcom/shabakaty/downloader/xu3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/xu3;

.field public static final synthetic t:Lcom/shabakaty/downloader/xu3;

.field public static final synthetic u:Lcom/shabakaty/downloader/xu3;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/xu3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xu3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/xu3;->s:Lcom/shabakaty/downloader/xu3;

    new-instance v0, Lcom/shabakaty/downloader/xu3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xu3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/xu3;->t:Lcom/shabakaty/downloader/xu3;

    new-instance v0, Lcom/shabakaty/downloader/xu3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xu3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/xu3;->u:Lcom/shabakaty/downloader/xu3;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/xu3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/xu3;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/shabakaty/downloader/d65$b;

    check-cast p2, Lcom/shabakaty/downloader/d65$b;

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/d65$b;->a:Lcom/shabakaty/downloader/d65$c;

    iget p1, p1, Lcom/shabakaty/downloader/d65$c;->b:I

    iget-object p2, p2, Lcom/shabakaty/downloader/d65$b;->a:Lcom/shabakaty/downloader/d65$c;

    iget p2, p2, Lcom/shabakaty/downloader/d65$c;->b:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    .line 2
    :pswitch_1
    check-cast p1, Lcom/shabakaty/downloader/yu3$a;

    check-cast p2, Lcom/shabakaty/downloader/yu3$a;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/yu3$a;->a:Lcom/shabakaty/downloader/wu3;

    iget p1, p1, Lcom/shabakaty/downloader/wu3;->c:I

    iget-object p2, p2, Lcom/shabakaty/downloader/yu3$a;->a:Lcom/shabakaty/downloader/wu3;

    iget p2, p2, Lcom/shabakaty/downloader/wu3;->c:I

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/yu3;->b(II)I

    move-result p1

    return p1

    .line 4
    :goto_0
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    sget-object v0, Lcom/shabakaty/downloader/kg0;->g:Ljava/nio/charset/Charset;

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
