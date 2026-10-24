.class public Lcom/squareup/picasso/e;
.super Lcom/squareup/picasso/o;
.source "ContentStreamRequestHandler.java"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/picasso/o;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/picasso/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c(Lcom/squareup/picasso/m;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/squareup/picasso/m;I)Lcom/squareup/picasso/o$a;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/squareup/picasso/e;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 2
    iget-object p1, p1, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->O(Ljava/io/InputStream;)Lcom/shabakaty/downloader/r94;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/squareup/picasso/o$a;

    sget-object v0, Lcom/squareup/picasso/k$d;->t:Lcom/squareup/picasso/k$d;

    invoke-direct {p2, p1, v0}, Lcom/squareup/picasso/o$a;-><init>(Lcom/shabakaty/downloader/r94;Lcom/squareup/picasso/k$d;)V

    return-object p2
.end method
