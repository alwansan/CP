.class public final Lcom/shabakaty/downloader/x8;
.super Lcom/shabakaty/downloader/af2;
.source "AnnotationTypeQualifierResolver.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/z31;",
        "Lcom/shabakaty/downloader/u8;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/x8;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/x8;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x8;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/x8;->r:Lcom/shabakaty/downloader/x8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/z31;

    check-cast p2, Lcom/shabakaty/downloader/u8;

    const-string v0, "$this$mapConstantToQualifierApplicabilityTypes"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/z31;->c:Lcom/shabakaty/downloader/hw2;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->j()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/u8;->r:Ljava/lang/String;

    .line 6
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
