.class public final synthetic Lcom/shabakaty/downloader/p15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/p15;

.field public static final synthetic t:Lcom/shabakaty/downloader/p15;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/p15;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/p15;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/p15;->s:Lcom/shabakaty/downloader/p15;

    new-instance v0, Lcom/shabakaty/downloader/p15;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/p15;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/p15;->t:Lcom/shabakaty/downloader/p15;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/p15;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/shabakaty/downloader/p15;->r:I

    const-string v1, "it"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v4, p1

    check-cast v4, Ljava/lang/Boolean;

    .line 1
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 3
    sget-object v3, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p1

    .line 4
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object p1

    .line 5
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 6
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
