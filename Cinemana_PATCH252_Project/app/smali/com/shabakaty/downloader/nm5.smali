.class public final synthetic Lcom/shabakaty/downloader/nm5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/nm5;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/nm5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nm5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nm5;->a:Lcom/shabakaty/downloader/nm5;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/q80;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/l6;

    move-result-object p1

    return-object p1
.end method
