.class public final Lcom/shabakaty/downloader/or1;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

# interfaces
.implements Lcom/shabakaty/downloader/de0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/de0<",
        "TT;",
        "Lcom/shabakaty/downloader/yr3;",
        ">;"
    }
.end annotation


# static fields
.field public static final t:Lcom/shabakaty/downloader/fr2;

.field public static final u:Ljava/nio/charset/Charset;


# instance fields
.field public final r:Lcom/shabakaty/downloader/lr1;

.field public final s:Lcom/shabakaty/downloader/wr4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/fr2;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/or1;->t:Lcom/shabakaty/downloader/fr2;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/or1;->u:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/wr4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lr1;",
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/or1;->r:Lcom/shabakaty/downloader/lr1;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/or1;->s:Lcom/shabakaty/downloader/wr4;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zn;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn;-><init>()V

    .line 2
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/zn$b;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/zn$b;-><init>(Lcom/shabakaty/downloader/zn;)V

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/or1;->u:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/or1;->r:Lcom/shabakaty/downloader/lr1;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/lr1;->h(Ljava/io/Writer;)Lcom/shabakaty/downloader/pa2;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/or1;->s:Lcom/shabakaty/downloader/wr4;

    invoke-virtual {v2, v1, p1}, Lcom/shabakaty/downloader/wr4;->b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/pa2;->close()V

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/or1;->t:Lcom/shabakaty/downloader/fr2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn;->g()Lcom/shabakaty/downloader/fp;

    move-result-object v0

    const-string v1, "content"

    .line 9
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$toRequestBody"

    .line 10
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/xr3;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/xr3;-><init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fr2;)V

    return-object v1
.end method
