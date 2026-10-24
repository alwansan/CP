.class public final Lcom/shabakaty/downloader/vn1$a;
.super Ljava/lang/Object;
.source "FunctionClassKind.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vn1$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/vn1$a$a;
    .locals 9

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/vn1;->values()[Lcom/shabakaty/downloader/vn1;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    aget-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 3
    iget-object v7, v6, Lcom/shabakaty/downloader/vn1;->r:Lcom/shabakaty/downloader/fi1;

    .line 4
    invoke-static {v7, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    iget-object v7, v6, Lcom/shabakaty/downloader/vn1;->s:Ljava/lang/String;

    const/4 v8, 0x2

    .line 6
    invoke-static {p1, v7, v2, v8}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    :cond_2
    move-object v6, v4

    :goto_1
    if-nez v6, :cond_3

    return-object v4

    .line 7
    :cond_3
    iget-object p2, v6, Lcom/shabakaty/downloader/vn1;->s:Ljava/lang/String;

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_5

    goto :goto_5

    .line 10
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v0, p2, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, -0x30

    if-ltz v3, :cond_6

    const/16 v7, 0xa

    if-ge v3, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_7

    :goto_5
    move-object p1, v4

    goto :goto_6

    :cond_7
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    goto :goto_3

    .line 11
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_6
    if-nez p1, :cond_9

    return-object v4

    .line 12
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 13
    new-instance p2, Lcom/shabakaty/downloader/vn1$a$a;

    invoke-direct {p2, v6, p1}, Lcom/shabakaty/downloader/vn1$a$a;-><init>(Lcom/shabakaty/downloader/vn1;I)V

    return-object p2
.end method
