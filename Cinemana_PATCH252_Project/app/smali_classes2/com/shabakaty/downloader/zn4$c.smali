.class public Lcom/shabakaty/downloader/zn4$c;
.super Lcom/shabakaty/downloader/zn4;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zn4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/zn4;-><init>(Lcom/shabakaty/downloader/zn4$a;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/zn4$j;->v:Lcom/shabakaty/downloader/zn4$j;

    iput-object v0, p0, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    return-void
.end method


# virtual methods
.method public g()Lcom/shabakaty/downloader/zn4;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    return-object v0
.end method
