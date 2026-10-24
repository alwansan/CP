.class public final Lcom/shabakaty/downloader/qc3$a;
.super Ljava/lang/Object;
.source "PlatformDependentTypeTransformer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/qc3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qc3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/qc3$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/qc3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qc3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qc3$a;->a:Lcom/shabakaty/downloader/qc3$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;
    .locals 0

    const-string p1, "computedType"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
