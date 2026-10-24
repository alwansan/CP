.class public final Lcom/shabakaty/downloader/l46;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/shabakaty/downloader/e46;

.field public static final b:Lcom/shabakaty/downloader/e46;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/e46;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sput-object v0, Lcom/shabakaty/downloader/l46;->a:Lcom/shabakaty/downloader/e46;

    new-instance v0, Lcom/shabakaty/downloader/i46;

    invoke-direct {v0}, Lcom/shabakaty/downloader/i46;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/l46;->b:Lcom/shabakaty/downloader/e46;

    return-void
.end method
