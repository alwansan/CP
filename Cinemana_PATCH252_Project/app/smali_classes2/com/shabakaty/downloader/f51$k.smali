.class public final Lcom/shabakaty/downloader/f51$k;
.super Lcom/shabakaty/downloader/f51;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f51;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/f51$k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/k21;Lcom/shabakaty/downloader/k21;)Z
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/f51$k;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object p2

    const-string v0, "class"

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/he;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_6

    if-ge v6, v7, :cond_0

    goto :goto_2

    :cond_0
    if-ne v6, v7, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v6, :cond_5

    .line 6
    invoke-virtual {p2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    sub-int v0, v11, v10

    if-ne v0, v7, :cond_2

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p2

    move v2, v10

    move-object v3, p1

    move v5, v7

    .line 7
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    move v10, v11

    const/4 v0, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    sub-int/2addr v6, v10

    if-ne v6, v7, :cond_6

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p2

    move v2, v10

    move-object v3, p1

    move v5, v7

    .line 8
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v8

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v8, 0x0

    :goto_3
    return v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/f51$k;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
