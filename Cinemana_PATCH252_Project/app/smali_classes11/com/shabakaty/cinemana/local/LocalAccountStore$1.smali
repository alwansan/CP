.class Lcom/shabakaty/cinemana/local/LocalAccountStore$1;
.super Ljava/io/OutputStream;
.source "LocalAccountStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalAccountStore;->encode(Lcom/shabakaty/cinemana/local/LocalAccountStore$State;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bytes:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$1;->val$bytes:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$1;->val$bytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    const-wide/32 v2, 0x1800000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_16

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$1;->val$bytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_16
    new-instance p1, Ljava/io/IOException;

    const-string v0, "account limit"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$1;->val$bytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    const-wide/32 v2, 0x1800000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_16

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$1;->val$bytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_16
    new-instance p1, Ljava/io/IOException;

    const-string p2, "account limit"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
