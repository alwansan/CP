.class public final synthetic Lcom/shabakaty/downloader/sf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/rn1;


# static fields
.field public static final synthetic b:Lcom/shabakaty/downloader/sf;

.field public static final synthetic c:Lcom/shabakaty/downloader/sf;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/sf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/sf;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/sf;->b:Lcom/shabakaty/downloader/sf;

    new-instance v0, Lcom/shabakaty/downloader/sf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/sf;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/sf;->c:Lcom/shabakaty/downloader/sf;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/sf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/sf;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/shabakaty/downloader/yh4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/yh4;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_0

    goto :goto_1

    :cond_0
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f0a03e0
        0x7f0a03e2
    .end array-data

    :array_1
    .array-data 4
        0x7f0a03e2
        0x7f0a03e0
    .end array-data
.end method
