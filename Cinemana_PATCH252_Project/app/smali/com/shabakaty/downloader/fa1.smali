.class public final synthetic Lcom/shabakaty/downloader/fa1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/td0;


# static fields
.field public static final r:Lcom/shabakaty/downloader/td0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/fa1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/fa1;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/fa1;->r:Lcom/shabakaty/downloader/td0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public M(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;
    .locals 0

    sget-object p1, Lcom/shabakaty/downloader/ga1;->c:Ljava/lang/Object;

    const/16 p1, 0x193

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
