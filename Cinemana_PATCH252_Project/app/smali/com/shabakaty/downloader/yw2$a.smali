.class public Lcom/shabakaty/downloader/yw2$a;
.super Ljava/lang/Object;
.source "NavDeepLink.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yw2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/shabakaty/downloader/yw2$a;",
        ">;"
    }
.end annotation


# instance fields
.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/shabakaty/downloader/yw2$a;->r:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/shabakaty/downloader/yw2$a;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/yw2$a;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/yw2$a;->f(Lcom/shabakaty/downloader/yw2$a;)I

    move-result p1

    return p1
.end method

.method public f(Lcom/shabakaty/downloader/yw2$a;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yw2$a;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/shabakaty/downloader/yw2$a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/yw2$a;->s:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/yw2$a;->s:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method
