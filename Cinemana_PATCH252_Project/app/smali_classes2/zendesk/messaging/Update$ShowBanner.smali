.class public Lzendesk/messaging/Update$ShowBanner;
.super Lzendesk/messaging/Update$State;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowBanner"
.end annotation


# instance fields
.field public final banner:Lzendesk/messaging/Banner;


# virtual methods
.method public getBanner()Lzendesk/messaging/Banner;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/messaging/Update$ShowBanner;->banner:Lzendesk/messaging/Banner;

    return-object v0
.end method
