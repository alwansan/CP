.class public Lcom/shabakaty/downloader/he$a;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/he;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/shabakaty/downloader/ge;",
        ">;"
    }
.end annotation


# instance fields
.field public r:I

.field public final synthetic s:Lcom/shabakaty/downloader/he;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/he;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/he$a;->s:Lcom/shabakaty/downloader/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/he$a;->r:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/he$a;->r:I

    iget-object v1, p0, Lcom/shabakaty/downloader/he$a;->s:Lcom/shabakaty/downloader/he;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/he;->r:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ge;

    iget-object v1, p0, Lcom/shabakaty/downloader/he$a;->s:Lcom/shabakaty/downloader/he;

    iget-object v2, v1, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    iget v3, p0, Lcom/shabakaty/downloader/he$a;->r:I

    aget-object v2, v2, v3

    iget-object v4, v1, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v0, v2, v3, v1}, Lcom/shabakaty/downloader/ge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/he$a;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/he$a;->r:I

    return-object v0
.end method

.method public remove()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/he$a;->s:Lcom/shabakaty/downloader/he;

    iget v1, p0, Lcom/shabakaty/downloader/he$a;->r:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/he$a;->r:I

    .line 2
    iget v3, v0, Lcom/shabakaty/downloader/he;->r:I

    if-lt v1, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    if-lez v3, :cond_1

    .line 3
    iget-object v4, v0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    invoke-static {v4, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_1
    iget v1, v0, Lcom/shabakaty/downloader/he;->r:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/he;->r:I

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aput-object v3, v0, v1

    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
