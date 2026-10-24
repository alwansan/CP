.class public final Lcom/shabakaty/downloader/oc3$a;
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
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/oc3$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/oc3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/oc3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/oc3$a;->a:Lcom/shabakaty/downloader/oc3$a;

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
    .locals 0

    const-string p2, "classDescriptor"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
