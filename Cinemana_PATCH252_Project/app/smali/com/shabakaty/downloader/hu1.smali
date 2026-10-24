.class public final synthetic Lcom/shabakaty/downloader/hu1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# static fields
.field public static final synthetic r:Lcom/shabakaty/downloader/hu1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/hu1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hu1;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/hu1;->r:Lcom/shabakaty/downloader/hu1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
