.class public final synthetic Lcom/shabakaty/downloader/s92;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/l43;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/s92;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/s92;

    invoke-direct {v0}, Lcom/shabakaty/downloader/s92;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/s92;->a:Lcom/shabakaty/downloader/s92;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/shabakaty/downloader/m43;

    sget-object p2, Lcom/shabakaty/downloader/w92;->e:Lcom/shabakaty/downloader/w92$a;

    .line 1
    new-instance p2, Lcom/shabakaty/downloader/p31;

    const-string v0, "Couldn\'t find encoder for type "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/p31;-><init>(Ljava/lang/String;)V

    throw p2
.end method
