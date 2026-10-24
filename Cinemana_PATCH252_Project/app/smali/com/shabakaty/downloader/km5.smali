.class public final synthetic Lcom/shabakaty/downloader/km5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/aq4;


# static fields
.field public static final r:Lcom/shabakaty/downloader/aq4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/km5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/km5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/km5;->r:Lcom/shabakaty/downloader/aq4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/shabakaty/downloader/wx6;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b37;->e()I

    move-result v0

    new-array v1, v0, [B

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/e17;->b:Ljava/util/logging/Logger;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/e17$a;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/e17$a;-><init>([BI)V

    .line 4
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/b37;->b(Lcom/shabakaty/downloader/e17;)V

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/e17$a;->J()I

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3e

    add-int/lit8 v2, v2, 0xa

    const-string v3, "Serializing "

    const-string v4, " to a "

    const-string v5, "byte array"

    invoke-static {v2, v3, p1, v4, v5}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " threw an IOException (should never happen)."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
