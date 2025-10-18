# https://kaylorben.github.io/nixcord/#sec-options
{
  programs.nixcord.config.plugins = {
    fakeNitro.enable = true;
    memberCount.enable = true;
    noReplyMention.enable = true;
    showHiddenChannels.enable = true;
    showHiddenThings.enable = true;
    accountPanelServerProfile.enable = true;
    betterGifPicker.enable = true;
    callTimer.enable = true;
    clientTheme.enable = true;
    copyEmojiMarkdown.enable = true;
    disableCallIdle.enable = true;
    expressionCloner.enable = true;
    favoriteEmojiFirst.enable = true;
    favoriteGifSearch.enable = true;
    fixImagesQuality.enable = true;
    fixYoutubeEmbeds.enable = true;
    friendInvites.enable = true;
    friendsSince.enable = true;
    fullSearchContext.enable = true;
    mutualGroupDMs.enable = true;
    noF1.enable = true;
    noUnblockToJump.enable = true;
    oneko.enable = true;
    pauseInvitesForever.enable = true;
    petpet.enable = true;
    pinDMs.enable = true;
    readAllNotificationsButton.enable = true;
    spotifyShareCommands.enable = true;
    youtubeAdblock.enable = true;
    betterFolders.enable = true;
    iLoveSpam.enable = true;

    customIdle = {
      enable = true;
      idleTimeout = 0.0;
    };

    customRPC = {
      enable = true;
    };

    experiments = {
      enable = true;
    };

    fixSpotifyEmbeds = {
      enable = true;
      volume = 10.0;
    };

    imageZoom = {
      enable = true;
    };

    invisibleChat = {
      enable = true;
    };

    messageClickActions = {
      enable = true;
      enableDeleteOnClick = true;
      enableDoubleClickToEdit = true;
      enableDoubleClickToReply = true;
    };

    messageLogger = {
      enable = true;

    };

    quickReply = {
      enable = true;
    };

    secretRingToneEnabler = {
      enable = true;
    };

    sendTimestamps = {
      enable = true;
    };

    showConnections = {
      enable = true;
    };

    silentTyping = {
      enable = true;
    };

    spotifyControls = {
      enable = true;
    };

    spotifyCrack = {
      enable = true;
    };

    unlockedAvatarZoom = {
      enable = true;
    };

    userVoiceShow = {
      enable = true;
    };

    voiceChatDoubleClick.enable = true;
    voiceDownload.enable = true;
    voiceMessages = {
      enable = true;
    };

    volumeBooster = {
      enable = true;
      multiplier = 2;
    };
  };
}