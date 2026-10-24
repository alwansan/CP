.class public final Lcom/shabakaty/downloader/oc3$b;
.super Ljava/lang/Object;
.source "PlatformDependentDeclarationFilter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/oc3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/oc3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/oc3$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/oc3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/oc3$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/oc3$b;->a:Lcom/shabakaty/downloader/oc3$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/t64;)Z
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/pc3;->a:Lcom/shabakaty/downloader/fi1;

    .line 3
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
